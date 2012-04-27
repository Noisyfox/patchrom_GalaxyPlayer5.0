.class Lcom/android/browser/BrowserActivity$SetAsWallpaper;
.super Ljava/lang/Thread;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAsWallpaper"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mUrl:Ljava/net/URL;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "url"

    .prologue
    .line 3323
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3321
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    .line 3325
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    :goto_0
    return-void

    .line 3326
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3327
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 3333
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 3336
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 3340
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 3341
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3342
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3343
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3344
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3345
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3346
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->start()V

    .line 3348
    :cond_0
    return v3
.end method

.method public run()V
    .locals 5

    .prologue
    .line 3352
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3359
    .local v2, oldWallpaper:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 3360
    .local v1, inputstream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 3361
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3, v1}, Lcom/android/browser/BrowserActivity;->setWallpaper(Ljava/io/InputStream;)V

    .line 3362
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3388
    .end local v1           #inputstream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3389
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3391
    :cond_1
    return-void

    .line 3364
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3365
    .local v0, e:Ljava/io/IOException;
    const-string v3, "browser"

    const-string v4, "Unable to set new wallpaper"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity$SetAsWallpaper;->mCanceled:Z

    goto :goto_0
.end method
