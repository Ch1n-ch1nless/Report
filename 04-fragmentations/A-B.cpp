export module A:B; // partition module interface unit
 
// Hello() is visible by any translation unit importing 'A'.
export char const* Hello() { return "Hello"; }