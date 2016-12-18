<!DOCTYPE>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

    <body>

        <div class="main-container">

            <!-- HEADER -->
            <header class="block">
                <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" href="#1"><span class="icon entypo-cog scnd-font-color"></span>ข้อสอบทั้งหมด</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#2"><span class="icon fontawesome-user scnd-font-color"></span>เพิ่มข้อสอบ</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#3"><span class="icon fontawesome-envelope scnd-font-color"></span>Messages</a>
                        <a class="header-menu-number" href="#4">5</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="#5"><span class="icon fontawesome-star-empty scnd-font-color"></span>ข้อมูลผู้ใช้</a>
                    </li>
                </ul>
                <div class="profile-menu">
                    <p>Admin<a href="#26"><span class="entypo-down-open scnd-font-color"></span></a></p>
                    <div class="profile-picture small-profile-picture">
                        <img width="40px" alt="Anne Hathaway picture" src="http://upload.wikimedia.org/wikipedia/commons/e/e1/Anne_Hathaway_Face.jpg">
                    </div>
                </div>
            </header>

            <div class="left-container container">
            
            <form action="add-data.php" method="post">
                <!-- <div class="add block">
                    <h2 class="titular">เพิ่มข้อสอบ</h2>
                    <h2 class="m-50">เลือกวิชา</h2> 
                    <select name="subject" class="m-50" id="selectNumber">
                        <option>ความถนัดด้านศิลปกรรม</option>
                        <option>ความถนัดทั่วไป</option>
                      
                    </select>
                    <h2 class="m-50">เรื่อง</h2> 
                    <select name="catagory" class="m-50" id="selectNumber">
                        <option>ศิลปะ</option>
                        <option>นาฏศิลป์</option>
                        <option>ดนตรี</option>
                    </select>
                    <h2 class="m-50">ระดับความยากของคำถาม</h2> 
                    <select name='level' class="m-50">
                        <option value="1">ง่าย</option>
                        <option value="2">ปานกลาง</option>
                        <option value="3">ยาก</option>
                    </select> -->

                    <div class="input-container">
                        <h2 class="m-50">คำถาม</h2> 
                        <input type="text" placeholder="คำถาม" name="question">
                    </div>
                    
                    <div class="input-container">
                        <h2 class="m-50">คำตอบ</h2> 
                        
                        
                        <input type="text" placeholder="คำตอบ1" name="answer1" class="m-50">
                        <input type="text" placeholder="คำตอบ2" name="answer2" class="m-50">
                        <input type="text" placeholder="คำตอบ3" name="answer3" class="m-50">
                        <input type="text" placeholder="คำตอบ4" name="answer4" class="m-50">

                    </div>
                    <div class="input-container">
                     <h2 class="m-50">คำตอบที่ถูกต้อง</h2> 
                     <input type="text" placeholder="คำตอบที่ถูกต้อง" name="correct" class="m-50">
                  
                        <button class="m-50">Submit</button>
                    </div>
        
                </div>
            </form>
            </div>

           
                
                   

            
                
             
            </div>
        </div> <!-- end main-container -->
    </body>




</html>