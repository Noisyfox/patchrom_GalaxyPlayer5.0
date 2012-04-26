.class Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "VerticalProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/ui/VerticalProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mId:I

.field private mProgress:I

.field final synthetic this$0:Lcom/miui/camera/ui/VerticalProgressBar;


# direct methods
.method constructor <init>(Lcom/miui/camera/ui/VerticalProgressBar;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/miui/camera/ui/VerticalProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    .line 237
    iput p3, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 238
    iput-boolean p4, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/miui/camera/ui/VerticalProgressBar;

    iget v1, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    iget v2, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    iget-boolean v3, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    #calls: Lcom/miui/camera/ui/VerticalProgressBar;->doRefreshProgress(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/camera/ui/VerticalProgressBar;->access$000(Lcom/miui/camera/ui/VerticalProgressBar;IIZ)V

    .line 244
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->this$0:Lcom/miui/camera/ui/VerticalProgressBar;

    #setter for: Lcom/miui/camera/ui/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;
    invoke-static {v0, p0}, Lcom/miui/camera/ui/VerticalProgressBar;->access$102(Lcom/miui/camera/ui/VerticalProgressBar;Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;)Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;

    .line 245
    return-void
.end method

.method public setup(IIZ)V
    .locals 0
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 248
    iput p1, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mId:I

    .line 249
    iput p2, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mProgress:I

    .line 250
    iput-boolean p3, p0, Lcom/miui/camera/ui/VerticalProgressBar$RefreshProgressRunnable;->mFromUser:Z

    .line 251
    return-void
.end method
