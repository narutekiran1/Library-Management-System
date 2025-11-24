<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Manage Books</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">

  <h2 class="text-center mb-4 text-primary">📘 Manage Books</h2>

  <!-- Book Form -->
  <form id="bookForm" method="get" action="books" 
        class="p-4 border rounded-4 shadow-sm bg-light">

    <div class="row g-3">
      <div class="col-md-4">
        <input name="title" class="form-control" placeholder="Book Title" required />
      </div>

      <div class="col-md-4">
        <input name="author" class="form-control" placeholder="Author" required />
      </div>

      <div class="col-md-4">
        <input name="publisher" class="form-control" placeholder="Publisher" required />
      </div>

      <div class="col-md-4">
        <input name="category" class="form-control" placeholder="Category" required />
      </div>

      <div class="col-md-4">
        <input name="isbn" class="form-control" placeholder="ISBN" required />
      </div>
    </div>

    <button type="submit" class="btn btn-primary mt-4 px-3">Add Book</button>
    <a href="index.jsp" class="btn btn-outline-secondary mt-4 ms-2">⬅ Back</a>

  </form>

  <!-- Book List -->
  <h4 class="mt-5">📚 Book List</h4>

  <div class="table-responsive">
    <table id="bookTable" class="table table-striped table-hover mt-3 shadow-sm align-middle text-center"></table>
  </div>

</div>

<script src="js/books.js"></script>

</body>
</html>
