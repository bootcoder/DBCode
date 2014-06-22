

*** orion stuff ***

<% @editor.code.split('\n').each do |line_of_code|  %> 
	<%= line_of_code %>
<% end %>


$(document).ready = function(){

	$('#create_button').on('click', function(event) {
	// event.preventDefault();
	console.log("onclick");
	
	
	var editorArray = [];
	for (var i=0; i < $('.textviewContent').children().length; i++) {
	editorArray.push($($('.textviewContent').children()[i]).text());}
	
	$.ajax({
		url: '/issues/new',
		type: 'POST',
		dataType: 'json',
		data: {},
		success: function(result) {

		},
		error: function() {

		}
	});


	array.join('\n');
	console.log("here i am");
	console.log(array);
	});
};






<link rel="stylesheet" type="text/css" href="http://eclipse.org/orion/editor/releases/3.0/built-editor.css"/>
<script src="http://eclipse.org/orion/editor/releases/3.0/built-editor.min.js"></script> 
<script>
  require(["orion/editor/edit"], function(edit) {
    window.myEditor = edit({className: "editor"});

  });
</script>




<label class="label" for="gist">Troubling Code:</label>
   
    <pre class="editor" data-editor-lang="js">

    /*
     */
     * This is an Orion editor sample.
     */
    function() {
        debugger;
        var a = 'hi there!';
        window.console.log(a);
    }
    </pre>

    <br>
    <br>
  


  *** end orion stuff ***


	*** ACE STUFF ***
  <!-- 
    <script>#editor</script>
    <script>ace.edit("editor"</script>
    <script type="text/javascript">  var editor = ace.edit("editor");
        editor.getSession().setMode("ace/mode/javascript");
    </script>
    <div id="editor">function foo(items) {
  var x = "All this is syntax highlighted";
  return x;
}
</div>
 -->


