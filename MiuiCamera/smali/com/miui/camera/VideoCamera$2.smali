.class Lcom/miui/camera/VideoCamera$2;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/VideoCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/miui/camera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 350
    invoke-static {p1}, Lcom/miui/camera/ImageManager;->roundOrientation(I)I

    move-result p1

    .line 351
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mLastOrientation:I
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$1000(Lcom/miui/camera/VideoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    #setter for: Lcom/miui/camera/VideoCamera;->mLastOrientation:I
    invoke-static {v0, p1}, Lcom/miui/camera/VideoCamera;->access$1002(Lcom/miui/camera/VideoCamera;I)I

    .line 353
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$1100(Lcom/miui/camera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    iget-object v1, p0, Lcom/miui/camera/VideoCamera$2;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mLastOrientation:I
    invoke-static {v1}, Lcom/miui/camera/VideoCamera;->access$1000(Lcom/miui/camera/VideoCamera;)I

    move-result v1

    #calls: Lcom/miui/camera/VideoCamera;->setOrientationIndicator(I)V
    invoke-static {v0, v1}, Lcom/miui/camera/VideoCamera;->access$1200(Lcom/miui/camera/VideoCamera;I)V

    .line 357
    :cond_0
    return-void
.end method
