$(document).ready(function(){

	let string = $('#article-content').text() 

	const {
    humanizedDuration, // 'less than a minute'
    duration, // 0.23272727272727273
    totalWords, // 9
    wordTime, // 0.03272727272727273
    totalImages, // 1
    imageTime, //  0.2
    otherLanguageTimeCharacters, // 6
    otherLanguageTime, // 0.012
} = readTimeEstimate(string, 20, 12, 500, ['img', 'Image'])

console.log(humanizedDuration)
console.log(duration)
$('#js-read-time span').text(humanizedDuration)
});