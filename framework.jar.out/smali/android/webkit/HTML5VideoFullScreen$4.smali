.class Landroid/webkit/HTML5VideoFullScreen$4;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_miui_0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onStopFullScreen()V

    :cond_miui_0
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_miui_1

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_miui_1
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1000()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_miui_2

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$1000()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_miui_2
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$1002(Landroid/view/View;)Landroid/view/View;

    .line 312
    :cond_0
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$902(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 314
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_miui_3

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 316
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-object v2, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 319
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$4;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0, v2}, Landroid/webkit/HTML5VideoFullScreen;->access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 320
    const/4 v0, 0x4

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    :cond_miui_3
    return-void
.end method
