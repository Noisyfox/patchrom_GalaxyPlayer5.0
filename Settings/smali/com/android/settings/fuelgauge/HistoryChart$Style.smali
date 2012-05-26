.class public final enum Lcom/android/settings/fuelgauge/HistoryChart$Style;
.super Ljava/lang/Enum;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fuelgauge/HistoryChart$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fuelgauge/HistoryChart$Style;

.field public static final enum Average:Lcom/android/settings/fuelgauge/HistoryChart$Style;

.field public static final enum Exact:Lcom/android/settings/fuelgauge/HistoryChart$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;

    const-string v1, "Average"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/HistoryChart$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Average:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;

    const-string v1, "Exact"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fuelgauge/HistoryChart$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Exact:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/fuelgauge/HistoryChart$Style;

    sget-object v1, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Average:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Exact:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;->$VALUES:[Lcom/android/settings/fuelgauge/HistoryChart$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fuelgauge/HistoryChart$Style;
    .locals 1
    .parameter

    .prologue
    const-class v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/HistoryChart$Style;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fuelgauge/HistoryChart$Style;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;->$VALUES:[Lcom/android/settings/fuelgauge/HistoryChart$Style;

    invoke-virtual {v0}, [Lcom/android/settings/fuelgauge/HistoryChart$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fuelgauge/HistoryChart$Style;

    return-object v0
.end method
