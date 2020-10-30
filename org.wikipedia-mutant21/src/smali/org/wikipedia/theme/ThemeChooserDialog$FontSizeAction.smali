.class final enum Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;
.super Ljava/lang/Enum;
.source "ThemeChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/theme/ThemeChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FontSizeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

.field public static final enum DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

.field public static final enum INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

.field public static final enum RESET:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const-string v1, "INCREASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const-string v1, "DECREASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    new-instance v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const-string v1, "RESET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->RESET:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    sget-object v5, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    aput-object v5, v1, v2

    sget-object v2, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->$VALUES:[Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;
    .locals 1

    .line 63
    const-class v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;
    .locals 1

    .line 63
    sget-object v0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->$VALUES:[Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    invoke-virtual {v0}, [Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    return-object v0
.end method
