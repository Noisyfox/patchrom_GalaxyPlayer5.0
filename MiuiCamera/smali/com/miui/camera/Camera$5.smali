.class Lcom/miui/camera/Camera$5;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->updateThumbnailButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/miui/camera/Camera$5;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/miui/camera/Camera$5;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->updateLastImage()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$6300(Lcom/miui/camera/Camera;)V

    .line 1510
    return-void
.end method
