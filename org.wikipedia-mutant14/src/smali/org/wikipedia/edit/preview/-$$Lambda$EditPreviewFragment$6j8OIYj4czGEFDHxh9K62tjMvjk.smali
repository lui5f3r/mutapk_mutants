.class public final synthetic Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;

    invoke-direct {v0}, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;->INSTANCE:Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$6j8OIYj4czGEFDHxh9K62tjMvjk;

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

    invoke-static {p1, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->lambda$initWebView$4(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
