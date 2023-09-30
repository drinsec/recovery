<!-- :
@mshta.exe "%~f0" | argon2.exe %*
@exit /b
-->
<html>
<head><title>Password submitter</title></head>
<body>

    <script language='javascript' >
        window.resizeTo(300,150);
        function entperPressed(e){
                if (e.keyCode == 13) {
                    pipePass();
                }
        }
        function pipePass() {
            var pass=document.getElementById('pass').value;
            var fso= new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1);
            close(fso.Write(pass));

        }
    </script>

    <input type='password' name='pass' size='15' value='test' onkeypress="return entperPressed(event)" ></input><br/>
    <hr>
    <button onclick='pipePass()'>Submit</button>

</body>
</html>