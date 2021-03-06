<link rel="stylesheet" href="css/style.css">
<center><h1 class='title'>Tic Tac Toe</h1>
<h1 class='title_3'><%=message%></h1></center>
<!-- Message is determined in the app.rb -->
<!-- Dispalays the values of the final game board -->
<table id="table_size">
    <tr>
        <!-- First row of table, or ttt board -->
        <td><div class="win_display"><%=board.ttt_board[0]%></div></td>
        <td class="middle_columns"><div class="win_display"><%=board.ttt_board[1]%></div></td>
        <td><div class="win_display"><%=board.ttt_board[2]%></div></td>
    </tr>
    <tr>
        <!-- Second row of table or ttt board -->
        <td class="top_bottom"><div class="win_display"><%=board.ttt_board[3]%></div></td>
        <td class="middle_columns top_bottom"><div class="win_display"><%=board.ttt_board[4]%></div></td>
        <td class="top_bottom"><div class="win_display"><%=board.ttt_board[5]%></div></td>
    </tr>
    <tr>
        <!-- Third row of table or ttt board -->
        <td><div class="win_display"><%=board.ttt_board[6]%></div></td>
        <td class="middle_columns"><div class="win_display"><%=board.ttt_board[7]%></div></td>
        <td><div class="win_display"><%=board.ttt_board[8]%></div></td>
    </tr>
</table>
<center>
    <!-- Added a link to a picture that will reset the sessions and redirect you to the welcome page to try again -->
<p class='link'><a href='/clear_sessions'><img src= "./img/playagain.JPG" style="width:100px;height:75px;"></a>
</center>
</p>
