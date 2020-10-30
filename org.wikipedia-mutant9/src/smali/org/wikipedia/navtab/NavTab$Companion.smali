.class public final Lorg/wikipedia/navtab/NavTab$Companion;
.super Ljava/lang/Object;
.source "NavTab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/navtab/NavTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/wikipedia/navtab/NavTab$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(I)Lorg/wikipedia/navtab/NavTab;
    .locals 1

    .line 64
    invoke-static {}, Lorg/wikipedia/navtab/NavTab;->access$getMAP$cp()Lorg/wikipedia/model/EnumCodeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/wikipedia/model/EnumCodeMap;->get(I)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/navtab/NavTab;

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 68
    invoke-static {}, Lorg/wikipedia/navtab/NavTab;->access$getMAP$cp()Lorg/wikipedia/model/EnumCodeMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/model/EnumCodeMap;->size()I

    move-result v0

    return v0
.end method
