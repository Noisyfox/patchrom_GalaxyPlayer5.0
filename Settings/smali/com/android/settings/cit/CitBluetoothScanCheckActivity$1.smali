.class Lcom/android/settings/cit/CitBluetoothScanCheckActivity$1;
.super Ljava/lang/Object;
.source "CitBluetoothScanCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothScanCheckActivity$1;->this$0:Lcom/android/settings/cit/CitBluetoothScanCheckActivity;

    #calls: Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->scanBluetooth()V
    invoke-static {v0}, Lcom/android/settings/cit/CitBluetoothScanCheckActivity;->access$000(Lcom/android/settings/cit/CitBluetoothScanCheckActivity;)V

    return-void
.end method
