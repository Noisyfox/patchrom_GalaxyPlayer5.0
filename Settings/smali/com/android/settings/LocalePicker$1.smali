.class Lcom/android/settings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    #calls: Lcom/android/settings/LocalePicker;->updateLocale()V
    invoke-static {v0}, Lcom/android/settings/LocalePicker;->access$000(Lcom/android/settings/LocalePicker;)V

    iget-object v0, p0, Lcom/android/settings/LocalePicker$1;->this$0:Lcom/android/settings/LocalePicker;

    invoke-virtual {v0}, Lcom/android/settings/LocalePicker;->finish()V

    return-void
.end method
