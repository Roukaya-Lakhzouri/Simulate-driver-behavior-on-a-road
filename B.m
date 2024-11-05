%p = Probability of an event
function y = B(p)
   i = rand();
   if (i < p)
     y = true;
   elseif (i > p)
     y = false;
   else
     y = NaN;
   endif
endfunction
