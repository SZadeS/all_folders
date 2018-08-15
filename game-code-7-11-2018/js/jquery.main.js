 // page init
jQuery(window).load(function(){
	viewHandle();
//	stepHandler();
	pageHandler();
});

function viewHandle(){
	var timeHolder = $('.time-box'),
		hintViewTime = timeHolder.find('#hint-time'),
		gameViewTime = timeHolder.find('#play-time'),
		gameHolder = $('.game-holder'),
		hintsView = gameHolder.find('.hints'),
		gameView = gameHolder.find('.play-dice'),
		refreshBtn = gameHolder.find('.btn-refresh'),
		gameIndex = 40,
		index = 3;


	if(index >= 10){
		hintViewTime.html('00 : ' + index);
	}else{
		hintViewTime.html('00 : 0' + index);
	}
	stepHandler();
	hintViewTime.fadeIn('slow');
	hintsView.fadeIn('slow');


	function hanldeTime(index){
		if(index >= 10){
			hintViewTime.html('00 : ' + index);
		}else{
			hintViewTime.html('00 : 0' + index);
		}

		if(index === 0){
			clearInterval(timer);
			hintViewTime.fadeOut('fast');
			hintsView.fadeOut('fast');

			setTimeout(function(){
				if(gameIndex >= 10){
					gameViewTime.html('00 : ' + gameIndex);
				}else{
					gameViewTime.html('00 : 0' + gameIndex);
				}
				gameViewTime.fadeIn('slow');
				gameView.fadeIn('slow');

				var gameTimer = setInterval(function(){
					handleGameTime(gameIndex);
					gameIndex --;
				}, 1000);


				function handleGameTime(gameIndex){
					if(gameIndex >= 10){
						gameViewTime.html('00 : ' + gameIndex);
					}else{
						gameViewTime.html('00 : 0' + gameIndex);
					}

					if(gameIndex === 0){
						clearInterval(gameTimer);
						$('#lose').fadeIn('fast');
						refreshBtn.fadeIn('fast');
					}
				}

			},500);
		}
	}

	var timer = setInterval(function(){
		hanldeTime(index);
		index --;
	}, 1000);

}


function createGround(width){
    var result = [];
    for (var i = 0 ; i < width; i++) {
        for (var j = i; j < i+1; j++) {
			result[j] = Math.floor((Math.random() * 5) + 1);
        }
    }
    return result;
}


function stepHandler(){
	var itemHolder = $('.play-dice'),
		hintsList = $('.game-items.hints'),
		hintsItem = hintsList.find('.items-row'),
		item = itemHolder.find('.items-row'),
		lastVal = 0,
		results = createGround(6),
		gameHolder = $('.game-holder'),
		refreshBtn = gameHolder.find('.btn-refresh'),
		pointsList = [],
		timeHolder = $('.time-box'),
		gameViewTime = timeHolder.find('#play-time');
		arbCounter = 0;

	matchIndex(hintsItem, false);

	function matchIndex(indexItem, flag){

		function compare(arr1,arr2){

		  var mapObject={};

			arr1.forEach((e1)=>arr2.forEach((e2)=> {if(e1 === e2){
				   objMap[e1]=objMap[e1]+1||1 ;
				}
			  }
			));
			var remaining = Object.keys(mapObject).map(e=>Number(e));
			return remaining;
		}

		if(flag){
			var children = indexItem.parent().children();

			if(!$(indexItem).hasClass('isClicked')){
				pointsList.pop(k);

			}

			for (var k = 0; k < children.length; k++) {

				if($(children[k]).hasClass('isClicked')){
					pointsList.push(k);
					arbCounter += 1
				}
			}

			if(pointsList.length >= results.length){
				var status = compare(pointsList, results);

				if(status.length >= 6 && arbCounter ===6){
					$('#win').fadeIn();
					refreshBtn.fadeIn('fast');
					$('#play-time').fadeOut('fast');
				}else{
					$('#lose').fadeIn();
					refreshBtn.fadeIn('fast');
					$('#play-time').fadeOut('fast');
				}
			}

		}else{
			for (var k = 0; k < results.length; k++) {
				var loc = results[k],
					itemChild = indexItem[k].children;

				itemChild[loc].className += ' isClicked';
			}
		}



	}

	item.each(function(index){
		var item = $(this),
			colItem = item.find('.item');

		colItem.each(function(colIndex){
			var col = $(this);

			col.on('click',function(){
				col.toggleClass('isClicked');
				matchIndex(col, true);
			});
		});

	});
}

function pageHandler(){
	var btn = $('.btn-reload')[0];

	btn.onclick = function(){
		location.reload();
	}
}
