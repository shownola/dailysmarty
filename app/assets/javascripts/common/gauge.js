
(function($) {

    $.fn.gauge = function() {

        return this.each(function() {

            var $this = $(this);
            var h1 = $this.find('h1').html();
            var percentage = h1.substr(0,h1.length-1);

            if(percentage <= 50) {
                $this.find('.top').width(percentage/50*100+'%');
                $this.find('.bottom').width('0%');
            }

            if(percentage > 50) {
                $this.find('.top').width('100%');
                $this.find('.bottom').width((percentage-50)/50*100-20+'%');
            }
        });
    }
    
})(jQuery);