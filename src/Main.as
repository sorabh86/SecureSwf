package
{
    import flash.display.Loader;
    import flash.display.Sprite;
    import flash.system.ApplicationDomain;
    import flash.system.LoaderContext;
     
    [SWF (width = 640, height = 423)] //the dimensions should be same as the loaded swf's
    public class Main extends Sprite
    {
        [Embed (source = "VerletCloth.swf", mimeType = "application/octet-stream")]
        // source = path to the swf you want to protect
        private var content:Class;
         
        public function Main():void
        {
            var loader:Loader = new Loader();
            addChild(loader);
            loader.loadBytes(new content(), new LoaderContext(false, new ApplicationDomain()));
        }
    }
     
}