<?php
/*
 *innodb表类型支持事务处理 MYISAM表类型不支持(可维护性较高)
 *数据库管理的类，提供数据库连接的封装和sql执行的封装
*/

class MYSQLI_DB{
	/*
	连接数据库并返回connection对象
	@return $conn=数据库连接对象
	*/
	private $conn;
	private $host;
	private $user;
	private $password;
	private $db;
	private $port=3306;
	
	public function __construct(){
		
		//读取数据库连接配置
		$dbFile = dirname(dirname(__FILE__))."/data/db.xml";
		$simplexml = simplexml_load_file($dbFile);
		$dbConnects= $simplexml->dbConnect;
		$dbConnect = $dbConnects[0];
		$this->host = $dbConnect->dbHost;
		$this->user = $dbConnect->dbUser;
		$this->password  = $dbConnect->dbPwd;
		$this->db = $dbConnect->dbName;
	}
	
	//得到连接
	public function getConn(){
		//建立连接
		$this->conn = mysqli_connect($this->host , $this->user , $this->password , $this->db,$this->port) or die('Error connecting to mysql');
		//设置字符编码
		mysqli_query($this->conn, "SET NAMES utf8;");
		
		//取消自动提交,主要用于dml语句
		mysqli_autocommit($this->conn,false);
				
		return $this->conn;
		
	}
	
	//执行查询sql语句
	public function execute_dql($sql){
		$res = mysqli_query($this->conn, $sql);
		
		return $res;
		
	}
    //执行增删改sql语句
	public function execute_dml($sql){
		$b = mysqli_query($this->conn, $sql);
	
		if (!$b){			
			return 0;//表示操作失败			
		}else {
			
			if (mysqli_affected_rows($this->conn)>0){
				return 1;//表示操作成功
			}else {
				return 2;//表示没有影响
			}
			
		}
			
	}
	
	//执行count语句
	public function execute_count($sql){
		
		$count = 0;
		
		$arr = mysqli_query($this->conn, $sql);
		
		if ($arr && mysqli_num_rows($arr)>0){
			$row = mysqli_fetch_row($arr);
			$count = $row[0];
		}
		
		return $count;
		
	}
	
	//事务提交
	public function commit(){
		if(!empty($this->conn)){
			mysqli_commit($this->conn);
		}
	}
    //事务回滚
	public function rollback(){
		if(!empty($this->conn)){
			mysqli_rollback($this->conn);
		}
	}

	//释放资源
	public function free($res=NULL){
		
		if (!empty($res)){
			mysql_free_result($res);
		}
		
		mysqli_close($this->conn);
		
	}	
	

}

?>
