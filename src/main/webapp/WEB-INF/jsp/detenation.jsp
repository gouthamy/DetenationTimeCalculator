<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nalashaa Detenation Time Calculator</title>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="../js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="../js/dataTables.editor.min.js"></script>
<script type="text/javascript" src="../js/dataTables.select.min.js"></script>
<script type="text/javascript" src="../js/jquery.dataTables.min.js"></script>
<script type="text/javascript">
var editor; // use a global for the submit and return data rendering in the examples

$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        ajax: "offenses",
        table: "#example",
        fields: [ {
                label: "Offense Type:",
                name: "offense_type"
            }, {
                label: "Detention Period(in hours):",
                name: "detentionPeriod"
            }
        ],
        formOptions: {
            bubble: {
                title: 'Edit',
                buttons: false
            }
        }
    } );
 
    $('button.new').on( 'click', function () {
        editor
            .title( 'Create new row' )
            .buttons( { "label": "Add", "fn": function () { editor.submit() } } )
            .create();
    } );
 
    $('#example').on( 'click', 'tbody td', function (e) {
        if ( $(this).index() < 6 ) {
            editor.bubble( this );
        }
    } );
 
    $('#example').on( 'click', 'a.remove', function (e) {
        editor
            .title( 'Delete row' )
            .message( 'Are you sure you wish to delete this row?' )
            .buttons( { "label": "Delete", "fn": function () { editor.submit() } } )
            .remove( $(this).closest('tr') );
    } );
 
    $('#example').DataTable( {
        ajax: "../php/staff.php",
        columns: [
            { data: "first_name" },
            { data: "last_name" },
            { data: "position" },
            { data: "office" },
            { data: "start_date" },
            { data: "salary", render: $.fn.dataTable.render.number( ',', '.', 0, '$' ) },
            {
                data: null,
                defaultContent: '<a href="#" class="remove">Delete</a>',
                orderable: false
            },
        ]
    } );
} );
</script>
<link rel="stylesheet" href="../css/buttons.dataTables.min.css"/>
<link rel="stylesheet" href="../css/jquery.dataTables.min.css"/>
<link rel="stylesheet" href="../css/select.dataTables.min.css"/>
</head>
<body>
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>Offense Type</th>
				<th>Detention Period(in hours)</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th>Offense Type</th>
				<th>Detention Period(in hours)</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>