<style>
   .header_filters.sticky-header {
      left: 0;
      z-index: 30; /* Adjust the z-index as needed */
      color: white; /* Set the text color to white */
   }
   @media only screen and (max-width: 575px) {
      .header_filters.sticky-header {
         padding-top: 30px;
      }
   }

</style>

<script>
   $(document).ready(function(){
      window.addEventListener('scroll', function () {
         var isScrolled = window.scrollY > 100  ;
         $(document).find('.header_filters').toggleClass('sticky-header', isScrolled);
         //$(document).find('.btn-update').toggleClass('w-100', isScrolled);
         // Toggle the visibility of .sub-header-button
         if (isScrolled) {
            $(document).find('.header_filters').removeClass('pt-100');
            $(document).find('.navbar-top').addClass('hidden');
         } else {
            $(document).find('.header_filters').addClass('pt-100');
            $(document).find('.navbar-top').removeClass('hidden');
         }
      });
   })

   $(document).ready(function(){
      $('#buy_or_lease').change(function(){
         var newAction = $(this).val()+'.php';
         $('#filter_property_form').attr('action', newAction);
      })
   })
</script>