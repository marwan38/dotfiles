<?php

$config = new PhpCsFixer\Config();

return $config->setRules([
    '@PSR12' => true,
    '@PhpCsFixer' => true,
    '@PHP80Migration' => true,
    'strict_param' => true,
    'array_syntax' => ['syntax' => 'short'],
    'binary_operator_spaces' => ['operators' => ['=>' => 'align']],
])->setRiskyAllowed(true);

