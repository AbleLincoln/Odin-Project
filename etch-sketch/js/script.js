$(document).ready(function() {
    createGrid(16);
    $('button[name="reset"]').click(function() {
        $('div').css('background-color', '#fff');
    });
    $('button[name="changeGrid"]').click(function() {
        var squares = prompt('How many squares per side?');
        $('div').empty();
        $('div').removeClass('highlighted');
        createGrid(squares);
    });
    $('button[name="eraser"]').click(function() {
      $('div > div').hover(function() {
          $(this).css('background-color', '#fff');
      });
    });
    $('button[name="pen"]').click(function() {
        $('div > div').hover(function() {
            $(this).css('background-color', '#a739a0');
        });
    });
    $('button[name="color"]').click(function() {
        $('div > div').hover(function() {
            $(this).css('background-color', '#123456');
        });
    });
    $('button[name="border"]').click(function() {
        $('div').css('border', '0');
    });
});

function createGrid(squares) {
    var size = 700 / squares;
    for(var i = 0; i < squares; i++) {
        for(var j = 0; j < squares; j++) {
            $('#container').append('<div></div>');
        };
        $('#container').append('<br>');
    };
    $('div > div').width(size).height(size);
    $('div > div').hover(function() {
        $(this).css('background-color', '#a739a0');
    });
};