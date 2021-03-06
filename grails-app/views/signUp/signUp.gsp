<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="wecare/headerfooter"/>
    <title> Sign Up </title>
</head>
<body>
<br>
<hr>
            <div class="container">
                <g:uploadForm controller="signUp" action="signUp" method="post">
                        <div class="row">
                            <div class="col-sm-8">
                                <img class="card-img-top" id="output2"
                                     src="${createLink(controller: "signUp", action: "displayCoverImage", params: [id: 9])}"
                                     style="width: 100%" height="300px">
                                </div>
                                    <div class="col-sm-1 coverbtn">
                                        <input class="profilebtn" type="file" name="coverImage" accept="image/*" onchange="loadFile2(event)">
                                        <script>
                                            var loadFile2 = function(event) {
                                                var output2 = document.getElementById('output2');
                                                output2.src = URL.createObjectURL(event.target.files[0]);
                                            };
                                        </script>
                                    </div>
                                </div>


                        <div class="row">
                            <div class="col-sm-2 profilepic" align="center">
                                <img class="rounded-circle" id="output"
                                     src="${createLink(controller: "signUp", action: "displayCoverImage", params: [id: 9])}"
                                     style="width: 100%" height="150px">
                                <br/>
                                <br/>
                                <input class="profilebtn" type="file" name="profileImage" accept="image/*" onchange="loadFile(event)">
                                <script>
                                    var loadFile = function(event) {
                                        var output = document.getElementById('output');
                                        output.src = URL.createObjectURL(event.target.files[0]);
                                    };
                                </script>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-5">
                                <label> Full Name:</label> <br/>
                                <input type="text" name="name" value="" required> <br/> <br/>
                                <label> Email:</label> <br/>
                                <input type="email" name="email" value="" required> <br/> <br/>
                                <label> Location:</label> <br/>
                                <input type="text" name="location" value="" required> <br/> <br/>
                            </div>

                            <div class="col-sm-5">
                                <label> Username :</label> <br/>
                                <input type="text" name="username" value="" required> <br/> <br/>
                                <label> Password:</label> <br/>
                                <input type="password" name="password" value="" required> <br/> <br/>
                                <label> Birthday:</label> <br/>
                                <input type="date" name="birthday" value="" required> <br/> <br/>
                            </div>
                        </div>

                    <div class="row">
                        <div class="col-sm-8" align="right">
                            <button type="submit" class="btn btn-success"> Save </button>
                        </div>
                    </div>
                </g:uploadForm>
</div>
</body>

</body>
</html>
