<?php

require_once __DIR__ . '/Email.php';

class SpamChecker
{
    private const SPAM_DOMAINS = ['test.com', 'coucou.fr', 'demo.sh', 'foo.fr'];

    public function isSpam(Email $email): bool
    {
        return in_array($email->getDomain(), SpamChecker::SPAM_DOMAINS);
    }
}
