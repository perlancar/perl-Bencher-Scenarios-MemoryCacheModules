package Bencher::Scenario::MemoryCacheModules::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup overhead of memory cache modules',
    participants => [
        {
            module => 'Cache::Memory::Simple',
            code_template => 'Cache::Memory::Simple->new',
        },
        {
            module => 'CHI',
            code_template => 'CHI->new(driver=>"Memory", global=>1)',
        },
        {
            module => 'Tie::Cache',
            code_template => 'tie %cache, "Tie::Cache", 100',
        },
    ],
    code_startup => 1,
};

1;
# ABSTRACT:
