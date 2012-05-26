.class Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
.super Ljava/lang/Object;
.source "WakeLockDetailsChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/WakeLockDetailsChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/fuelgauge/WakeLockDetailsChart;

.field public timeline:Landroid/os/IHistoryTimeline;

.field public y:I


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/WakeLockDetailsChart;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->this$0:Lcom/android/settings/fuelgauge/WakeLockDetailsChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/WakeLockDetailsChart;Lcom/android/settings/fuelgauge/WakeLockDetailsChart$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;-><init>(Lcom/android/settings/fuelgauge/WakeLockDetailsChart;)V

    return-void
.end method
