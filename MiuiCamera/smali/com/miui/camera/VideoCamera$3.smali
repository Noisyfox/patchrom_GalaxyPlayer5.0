.class Lcom/miui/camera/VideoCamera$3;
.super Ljava/lang/Thread;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/VideoCamera;->updateThumbnailButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$3;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$3;->this$0:Lcom/miui/camera/VideoCamera;

    #calls: Lcom/miui/camera/VideoCamera;->updateLastVideo()V
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$1500(Lcom/miui/camera/VideoCamera;)V

    .line 1220
    return-void
.end method
