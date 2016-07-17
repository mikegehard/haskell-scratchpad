module DestroyIfs where

import           Data.Char

-- From http://degoes.net/articles/destroy-all-ifs

-- match :: String -> Bool -> Bool -> String -> Bool
-- match pattern ignoreCase globalMatch target = undefined

-- Replace Bool with ADT
-- data Case = CaseSensitive | CaseInsensitive
-- data Predicate = Contains | Equals

-- match :: String -> Case -> Predicate -> String -> Bool
-- match pattern cse predicate target =
--     let
--         (pattern', target') = case cse of
--             CaseInsensitive -> (map toUpper pattern, map toUpper target)
--             CaseSensitive -> (pattern, target)
--     in
--         case predicate of
--             Contains -> True
--             Equals -> pattern' == target'

-- you will still be pattern matching on the Case and Predicate
-- types

-- Replace match with labmda that performs the effect of the
-- if statement

-- type Case = String -> String
-- data Predicate = Equals | Contains

-- match :: String -> Case -> Predicate -> String -> Bool
-- match pattern cse predicate target =
--     let
--         (pattern', target') = (cse pattern, cse target)
--     in
--         case predicate of
--             Contains -> True
--             Equals -> pattern' == target'

-- Now create a combinator

-- Up to this point I could follow along, here there seems to be
-- a lot of hand waving and I got lost... :-(
-- I get it conceptually but can't connect the dot
-- in practice.

type Matcher = String -> Predicate -> String -> Bool
data Predicate = Equals | Contains

match :: Matcher
match pattern predicate target = undefined

caseInsensitive :: Matcher -> Matcher
caseInsensitive matcher = undefined

-- Questions:
-- Why go away from the above types of Case and Predicate
-- and change the signature of match? I felt like I was just
-- getting the hang of how to evolve these types.
-- Why does is the 2nd parameter to match (String -> Bool)
-- and not (String -> String -> Bool)?

-- type Matcher = String -> Predicate -> String -> Bool
-- type Predicate = String -> String -> Bool

-- caseInsensitive :: Matcher -> Matcher
-- caseInsensitive = undefined

-- match :: Matcher
-- match = undefined

-- :t caseInsensitive match "a" (==) "b"
-- caseInsensitive match "a" (==) "b" :: Bool
