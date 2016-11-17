<!DOCTYPE html>
<html>
    <head>
        <title>my 1st view</title>
        <link href="{!! asset('style.css')!!}" media="all" rel="stylesheet" type="text/css"/>

    <style>
        .ab {
            height: 200px;
            width: 200px;
            padding-left: 200px;
            background-color: green;
        }
    </style>

    </head>
    <body>
        
   <div class="ab">
       <p>
           My name is MITHUN <br>
           <?php 
            /*
             echo $stu_id."<br>";
             echo $name."<br>";
             echo $email."<br>";
             echo $age."<br>";
             echo $cty."<br>";
             echo $birthday."<br>";
             echo $url."<br>";
           */
            $arr=array('Mithun','Dhaka','94');
            $wh = 1;


           ?>
           {!!$stu_id!!}<br>
           {{$name}}<br>
           {{$email}}<br>
           {{$age}}<br>


           @foreach($arr as $names)
             {{$names}}
             @endforeach
               
        <br>
        @if ($age > 50)
             Old
        @else
            young
        @endif

        <br>

        @while ($wh < 10)
        {{$wh}}
        {{$wh++}}
        
        @endwhile

       </p>
   </div>

    </body>
</html>