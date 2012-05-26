.class Lcom/android/settings/cit/CitPlaySdCardMp3Activity$1;
.super Ljava/lang/Object;
.source "CitPlaySdCardMp3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$1;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitPlaySdCardMp3Activity$1;->this$0:Lcom/android/settings/cit/CitPlaySdCardMp3Activity;

    #calls: Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->playMp3()V
    invoke-static {v0}, Lcom/android/settings/cit/CitPlaySdCardMp3Activity;->access$000(Lcom/android/settings/cit/CitPlaySdCardMp3Activity;)V

    return-void
.end method
