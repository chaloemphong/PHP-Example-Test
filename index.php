<!DOCTYPE>
<html>
<head>
 
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<title>Codebegin-demo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
 
<script type="text/javascript">
	function checkVal(){
		for(i=1;i<=10;i++){
			var rdo1=document.getElementById('Answer'+i+'_1').checked;
			var rdo2=document.getElementById('Answer'+i+'_2').checked;
			var rdo3=document.getElementById('Answer'+i+'_3').checked;
			var rdo4=document.getElementById('Answer'+i+'_4').checked;
			if(rdo1 == false && rdo2 == false && rdo3 == false && rdo4 == false){
				alert('คุณยังไม่ได้เลือกคำตอบที่ '+i);
				return false;
			}	
		}	
	}
</script>  
</head>
<body>

  <?php	
     include 'config.php';
 
	//ตรวจสอบคะแนน
  @$Act=$_GET['Act'];

	switch($Act){
		case 'checkPoint'	:$AnswerTrue=$_POST['hdAnswerTrue'];
									for($i=1;$i<=10;$i++){
										$Answer[]=$_POST['Answer'.$i];
									}
									
									$Point=0;
									for($i=0;$i<count($Answer);$i++){
										if($Answer[$i]==$AnswerTrue[$i]){
											$Point=$Point+1;
										}	
									}
		
			 
			
			//บันทึกเก็บคะแนน 
                         
                          $sql = "INSERT INTO userscore (Score_frist) VALUES ('".$Point."')";
                          $result = mysqli_query($conn,$sql);                                                
									
                          echo "<script>";
			  echo "alert('คะแนนของคุณที่ได้ทำ $Point เต็ม 10');";
			  echo "window.location='index.php';";
			  echo "</script>";
						  
		break;
    }
 
   ?>
 
      
      
   <br>
      <div class="container">  
      <div class="col-md-9">
      <form action="?Act=checkPoint" method="post">
            
                <?php
             
                //แสดงคำถาม
                $selectque = "select * from question  where QuestionID ORDER BY rand() LIMIT 10";
                $queryque = mysqli_query($conn,$selectque); 
            
                    $i=0;
                while($que = mysqli_fetch_array($queryque)){
                    $i++;
                ?>
                
                   <div class="panel panel-warning">
                   <div class="panel-body ">  
                  <h4>คำถามที่<?php echo  $i; ?> :</b> <?php echo $que['Question']; ?><input type="hidden" name="hdAnswerTrue[]" value="<?php echo $que['AnswerTrue'];?>"></h4>
					
					<?php if ($que['img'] != "")	
					echo "<img  class=\"img-responsive\" src ='imgtest/".$que["img"]."'/>"
	                                ?>
                    <br>
                    
                    
                    <?php
                    //แสดงตัวเลือกคำตอบ
		    $no=0;
                    $selectans= " select * from answer where QuestionID ='".$que['QuestionID']."' ORDER BY rand()";
		    $queryans = mysqli_query($conn,$selectans);  
                    while($ans = mysqli_fetch_array($queryans)){
		    $no++;
		    ?>
                   <?php echo $no;?>

                    <input type="radio" id="Answer<?php echo $i;?>_<?php echo $no;?>" name="Answer<?php echo $i;?>" value="<?php  echo $ans['Answer'];?>" /><?php echo $ans['Answer'];?><br>
                   
                  <?php } ?>
                   </div>
                   </div>            
                  <?php } ?>     
  
                   <center><button type="submit"  name="ok" class="btn btn-success"  onclick="return checkVal();" ><i class="glyphicon glyphicon-ok-sign"></i>&nbsp;ส่งข้อมูล</button>
                    <a href="test_frist.php"><button type="button" class="btn btn-danger"><i class="glyphicon glyphicon-refresh"></i>&nbsp;ล้างข้อมูล</button></a></center>
          </form>
     </div>   
       </div>
 <script src="bootstrap-3.3.7-dist/js/jquery-3.1.0.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>   
</body>
</html>
