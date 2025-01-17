<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <title>Forms-Servlets</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
</head>
<body>
<br/>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Data Registration Form</h3>
                </div>
                <div class="card-body">
                    <form name="form1" action="${pageContext.request.contextPath}/Servlet" method="post">
                        <%-- Hidde Element --%>
                        <input type="hidden" name="hidden" value="new hidden value">
                        <%-- User --%>
                        <div class="mb-3">
                            <label for="user" class="form-label">User (*)</label>
                            <input type="text" class="form-control" id="user" name="user" value="Enter user" required />
                        </div>
                        <%-- Password --%>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password (*)</label>
                            <input type="password" class="form-control" id="password" name="password" required />
                        </div>
                        <%-- Technologies --%>
                        <div class="mb-3">
                            <label class="form-label">Technologies</label><br />
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="java" name="technology" value="Java" />
                                <label class="form-check-label" for="java">Java</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="python" name="technology" value="Python" />
                                <label class="form-check-label" for="python">Python</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id=".net" name="technology" value=".Net" />
                                <label class="form-check-label" for=".net">.Net</label>
                            </div>
                        </div>
                        <%-- Gender --%>
                        <div class="mb-3">
                            <label class="form-label">Gender</label><br />
                            <div class="form-check form-check-inline">
                                <input type="radio" class="form-check-input" id="male" name="gender" value="Male" />
                                <label class="form-check-label" for="male">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="radio" class="form-check-input" id="female" name="gender" value="Female" />
                                <label class="form-check-label" for="female">Female</label>
                            </div>
                        </div>
                        <%-- Occupation --%>
                        <div class="mb-3">
                            <label for="occupation" class="form-label">Occupation</label>
                            <select name="occupation" id="occupation" class="form-select">
                                <option value="">-- Select an Option --</option>
                                <option value="Engineer">Engineer</option>
                                <option value="Accounting">Accounting</option>
                                <option value="Lawyer">Lawyer</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <%-- Comments --%>
                        <div class="mb-3">
                            <label for="comment" class="form-label">Comments:</label>
                            <textarea class="form-control" name="comment" id="comment" rows="3"></textarea>
                        </div>
                        <%-- Submit Btn --%>
                        <div class="mb-3 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
                <div class="card-footer"></div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>