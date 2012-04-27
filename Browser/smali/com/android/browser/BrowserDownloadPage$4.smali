.class Lcom/android/browser/BrowserDownloadPage$4;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->viewDDInfo(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;

.field final synthetic val$lID:J


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$4;->this$0:Lcom/android/browser/BrowserDownloadPage;

    iput-wide p2, p0, Lcom/android/browser/BrowserDownloadPage$4;->val$lID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 679
    const-string v1, "Browser_CD"

    const-string v2, "onActivityResult : User select CANCEL [CD_STATUS_USERCONFIRMED]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 681
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$4;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/browser/BrowserDownloadPage$4;->val$lID:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$4;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserDownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/browser/BrowserDownloadPage$4;->val$lID:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$4;->this$0:Lcom/android/browser/BrowserDownloadPage;

    const/4 v2, 0x0

    #setter for: Lcom/android/browser/BrowserDownloadPage;->bDDinfoViewed:Z
    invoke-static {v1, v2}, Lcom/android/browser/BrowserDownloadPage;->access$702(Lcom/android/browser/BrowserDownloadPage;Z)Z

    .line 690
    return-void
.end method
