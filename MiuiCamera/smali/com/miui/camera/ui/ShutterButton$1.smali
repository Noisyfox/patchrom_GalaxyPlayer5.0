.class Lcom/miui/camera/ui/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/ui/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/ui/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/miui/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/camera/ui/ShutterButton$1;->this$0:Lcom/miui/camera/ui/ShutterButton;

    iput-boolean p2, p0, Lcom/miui/camera/ui/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/camera/ui/ShutterButton$1;->this$0:Lcom/miui/camera/ui/ShutterButton;

    iget-boolean v1, p0, Lcom/miui/camera/ui/ShutterButton$1;->val$pressed:Z

    #calls: Lcom/miui/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V
    invoke-static {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->access$000(Lcom/miui/camera/ui/ShutterButton;Z)V

    .line 79
    return-void
.end method
