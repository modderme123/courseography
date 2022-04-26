module Scripts (
    graphScripts, timetableScripts, drawScripts, postScripts, searchScripts, generateScripts
    )
    where

import Text.Blaze ((!))
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Util.Blaze

graphScripts :: H.Html
graphScripts = H.script ! A.src "/static/js/graph/main.js" $ ""

timetableScripts :: H.Html
timetableScripts = H.script ! A.src "/static/js/grid/grid.js" $ ""

drawScripts :: H.Html
drawScripts = do
    mapM_ toScript
        ["/static/js/draw/variables.js",
         "/static/js/draw/path.js",
         "/static/js/draw/setup.js",
         "/static/js/vendor/jscolor.min.js"]
    H.script ! A.src "/static/js/draw/main.js" $ ""

postScripts :: H.Html
postScripts = do
    mapM_ toScript []
    H.script ! A.src "/static/js/post/post.js" $ ""

searchScripts :: H.Html
searchScripts = do
    H.script ! A.src "/static/js/search/search.js" $ ""

generateScripts :: H.Html
generateScripts = do
    H.script ! A.src "/static/js/generate/generate.js" $ ""
