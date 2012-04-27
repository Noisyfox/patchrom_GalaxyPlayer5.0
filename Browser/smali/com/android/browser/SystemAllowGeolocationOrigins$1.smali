.class Lcom/android/browser/SystemAllowGeolocationOrigins$1;
.super Landroid/os/AsyncTask;
.source "SystemAllowGeolocationOrigins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SystemAllowGeolocationOrigins;->maybeApplySettingAsync()V
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
.field final synthetic this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;


# direct methods
.method constructor <init>(Lcom/android/browser/SystemAllowGeolocationOrigins;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/browser/SystemAllowGeolocationOrigins$1;->this$0:Lcom/android/browser/SystemAllowGeolocationOrigins;

    #calls: Lcom/android/browser/SystemAllowGeolocationOrigins;->maybeApplySetting()V
    invoke-static {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->access$000(Lcom/android/browser/SystemAllowGeolocationOrigins;)V

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method
