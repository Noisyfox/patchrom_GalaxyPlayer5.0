.class Lcom/android/browser/BrowserRotateManager$1;
.super Ljava/lang/Object;
.source "BrowserRotateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserRotateManager;->startRotate(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserRotateManager;

.field final synthetic val$period:J


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserRotateManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/browser/BrowserRotateManager$1;->this$0:Lcom/android/browser/BrowserRotateManager;

    iput-wide p2, p0, Lcom/android/browser/BrowserRotateManager$1;->val$period:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/browser/BrowserRotateManager$1;->this$0:Lcom/android/browser/BrowserRotateManager;

    iget-wide v1, p0, Lcom/android/browser/BrowserRotateManager$1;->val$period:J

    #setter for: Lcom/android/browser/BrowserRotateManager;->mAniPeriod:J
    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserRotateManager;->access$002(Lcom/android/browser/BrowserRotateManager;J)J

    .line 175
    iget-object v0, p0, Lcom/android/browser/BrowserRotateManager$1;->this$0:Lcom/android/browser/BrowserRotateManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/browser/BrowserRotateManager;->mInAnimation:Z
    invoke-static {v0, v1}, Lcom/android/browser/BrowserRotateManager;->access$102(Lcom/android/browser/BrowserRotateManager;Z)Z

    .line 176
    return-void
.end method
