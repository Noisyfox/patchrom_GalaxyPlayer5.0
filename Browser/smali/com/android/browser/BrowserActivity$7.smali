.class Lcom/android/browser/BrowserActivity$7;
.super Landroid/os/AsyncTask;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$7;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$7;->val$newUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1176
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "unused"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$7;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->val$newUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1179
    const/4 v0, 0x0

    return-object v0
.end method
