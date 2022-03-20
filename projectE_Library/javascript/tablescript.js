$(document).ready(function () {
    $('.table').prepend( $ ("<thead></thead>").append($(this).find("tr:first"))).dataTable();
});