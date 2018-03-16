<?php 

class Category {
	public function fetch_all() {
		global $pdo; 
		$query = $pdo->prepare("SELECT * FROM categories");
		$query->execute(); 
		return $query->fetchAll();  
	}

	public function fetch_data($id) {
		global $pdo; 
		$query = $pdo->prepare("SELECT * FROM categories WHERE id = ? ");
		$query->bindValue(1, $id); 
		$query->execute(); 
		return $query->fetch(); 
	}
}

?>