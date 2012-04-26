.class Lcom/miui/camera/Camera$3;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->initializeFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method constructor <init>(Lcom/miui/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1449
    invoke-static {p1}, Lcom/miui/camera/ImageManager;->roundOrientation(I)I

    move-result p1

    .line 1450
    iget-object v0, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    #setter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static {v0, p1}, Lcom/miui/camera/Camera;->access$6002(Lcom/miui/camera/Camera;I)I

    .line 1452
    iget-object v0, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3500(Lcom/miui/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera$3;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v1

    #calls: Lcom/miui/camera/Camera;->setOrientationIndicator(I)V
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$6100(Lcom/miui/camera/Camera;I)V

    .line 1456
    :cond_0
    return-void
.end method
