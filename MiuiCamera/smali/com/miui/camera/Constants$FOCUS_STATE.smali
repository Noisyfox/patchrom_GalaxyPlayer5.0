.class public final enum Lcom/miui/camera/Constants$FOCUS_STATE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FOCUS_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/camera/Constants$FOCUS_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/camera/Constants$FOCUS_STATE;

.field public static final enum FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

.field public static final enum FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

.field public static final enum FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

.field public static final enum NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

.field public static final enum SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$FOCUS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 108
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    const-string v1, "FOCUSING"

    invoke-direct {v0, v1, v3}, Lcom/miui/camera/Constants$FOCUS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 109
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    const-string v1, "FOCUSING_SNAP_ON_FINISH"

    invoke-direct {v0, v1, v4}, Lcom/miui/camera/Constants$FOCUS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 110
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/miui/camera/Constants$FOCUS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 111
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v6}, Lcom/miui/camera/Constants$FOCUS_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/camera/Constants$FOCUS_STATE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->$VALUES:[Lcom/miui/camera/Constants$FOCUS_STATE;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/camera/Constants$FOCUS_STATE;
    .locals 1
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/miui/camera/Constants$FOCUS_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/camera/Constants$FOCUS_STATE;

    return-object p0
.end method

.method public static values()[Lcom/miui/camera/Constants$FOCUS_STATE;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_STATE;->$VALUES:[Lcom/miui/camera/Constants$FOCUS_STATE;

    invoke-virtual {v0}, [Lcom/miui/camera/Constants$FOCUS_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/camera/Constants$FOCUS_STATE;

    return-object v0
.end method
