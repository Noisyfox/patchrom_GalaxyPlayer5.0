.class public final enum Lcom/miui/camera/Constants$FOCUS_TYPE;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FOCUS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/camera/Constants$FOCUS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/camera/Constants$FOCUS_TYPE;

.field public static final enum AUTO:Lcom/miui/camera/Constants$FOCUS_TYPE;

.field public static final enum NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

.field public static final enum NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

.field public static final enum TOUCH:Lcom/miui/camera/Constants$FOCUS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Constants$FOCUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 117
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/miui/camera/Constants$FOCUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 118
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    const-string v1, "TOUCH"

    invoke-direct {v0, v1, v4}, Lcom/miui/camera/Constants$FOCUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->TOUCH:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 119
    new-instance v0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v5}, Lcom/miui/camera/Constants$FOCUS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->AUTO:Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/camera/Constants$FOCUS_TYPE;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->TOUCH:Lcom/miui/camera/Constants$FOCUS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->AUTO:Lcom/miui/camera/Constants$FOCUS_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->$VALUES:[Lcom/miui/camera/Constants$FOCUS_TYPE;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/camera/Constants$FOCUS_TYPE;
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/camera/Constants$FOCUS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/miui/camera/Constants$FOCUS_TYPE;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/miui/camera/Constants$FOCUS_TYPE;->$VALUES:[Lcom/miui/camera/Constants$FOCUS_TYPE;

    invoke-virtual {v0}, [Lcom/miui/camera/Constants$FOCUS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/camera/Constants$FOCUS_TYPE;

    return-object v0
.end method
