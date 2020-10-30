.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;

    invoke-direct {v0}, Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;-><init>()V

    sput-object v0, Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;->INSTANCE:Lorg/wikipedia/page/-$$Lambda$PageFragment$li7ZVOJxso8DRcMyAagr2cMGakw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/wikipedia/page/PageFragment;->lambda$setupMessageHandlers$21(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
