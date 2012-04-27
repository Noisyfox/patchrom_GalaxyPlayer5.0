.class Lcom/android/browser/RotateControl$1;
.super Ljava/lang/Object;
.source "RotateControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/RotateControl;->orientationChangeCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/RotateControl;

.field final synthetic val$newViewOrient:I


# direct methods
.method constructor <init>(Lcom/android/browser/RotateControl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/browser/RotateControl$1;->this$0:Lcom/android/browser/RotateControl;

    iput p2, p0, Lcom/android/browser/RotateControl$1;->val$newViewOrient:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSensorOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/RotateControl$1;->this$0:Lcom/android/browser/RotateControl;

    #getter for: Lcom/android/browser/RotateControl;->mSensorOrientation:I
    invoke-static {v2}, Lcom/android/browser/RotateControl;->access$000(Lcom/android/browser/RotateControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newViewOrient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/RotateControl$1;->val$newViewOrient:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/browser/RotateControl$1;->this$0:Lcom/android/browser/RotateControl;

    #getter for: Lcom/android/browser/RotateControl;->mSensorOrientation:I
    invoke-static {v0}, Lcom/android/browser/RotateControl;->access$000(Lcom/android/browser/RotateControl;)I

    move-result v0

    iget v1, p0, Lcom/android/browser/RotateControl$1;->val$newViewOrient:I

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/browser/RotateControl$1;->this$0:Lcom/android/browser/RotateControl;

    iget-object v1, p0, Lcom/android/browser/RotateControl$1;->this$0:Lcom/android/browser/RotateControl;

    #getter for: Lcom/android/browser/RotateControl;->mSensorOrientation:I
    invoke-static {v1}, Lcom/android/browser/RotateControl;->access$000(Lcom/android/browser/RotateControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/RotateControl;->rotateTo(I)V

    .line 165
    :cond_0
    return-void
.end method
