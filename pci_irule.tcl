when HTTP_REQUEST {
 set default_pool [LB::server pool]
 # check for at least 128 bits of encryption
 if { [SSL::cipher bits] < 128 }{
 pool weak_pool 
} else {
 pool $default_pool
 }
}
