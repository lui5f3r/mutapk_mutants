.class public final synthetic Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/model/CodeEnum;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;

    invoke-direct {v0}, Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;-><init>()V

    sput-object v0, Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$2NzO-wTkVxfBS_GwbOM_6nZvvvM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final enumeration(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lorg/wikipedia/page/Namespace;->of(I)Lorg/wikipedia/page/Namespace;

    move-result-object p1

    return-object p1
.end method
