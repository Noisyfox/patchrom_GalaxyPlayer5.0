.class Lcom/android/browser/BrowserActivity$Download;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Download"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "toDownload"

    .prologue
    .line 3312
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$Download;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3313
    iput-object p2, p0, Lcom/android/browser/BrowserActivity$Download;->mText:Ljava/lang/String;

    .line 3314
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    .line 3308
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$Download;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$Download;->mText:Ljava/lang/String;

    const-wide/16 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3309
    const/4 v0, 0x1

    return v0
.end method
