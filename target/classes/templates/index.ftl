<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">登录名</th>
                    <th scope="col">姓名</th>
                    <th scope="col">mail</th>
                    <th scope="col">年龄</th>
                </tr>
                </thead>
                <tbody>
                <#list users.list as list>
                <tr>
                    <th scope="row">${list.user_id}</th>
                    <td>${list.login_name}</td>
                    <td>${list.user_name}</td>
                    <td>${list.mail}</td>
                    <td>${list.age}</td>
                </tr>
                </#list>
                </tbody>
            </table>
            <!--pager-->
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <#import "./public/page.ftl" as fpage />
                    <@fpage.fpage page=users.page pagesize=users.pagesize totalpages=users.totalpages totalrecords=users.totalrecords url="index.html?key=" />
                </ul>
            </nav>
        </div>
    </div> .
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>