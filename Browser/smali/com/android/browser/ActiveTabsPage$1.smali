.class Lcom/android/browser/ActiveTabsPage$1;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage;->doneZoomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    #getter for: Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;
    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->clearZoomOutAnimation()V

    .line 793
    return-void
.end method
