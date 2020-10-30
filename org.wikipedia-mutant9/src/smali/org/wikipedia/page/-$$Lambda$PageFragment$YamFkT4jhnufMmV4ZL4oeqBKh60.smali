.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$YamFkT4jhnufMmV4ZL4oeqBKh60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$YamFkT4jhnufMmV4ZL4oeqBKh60;->f$0:Lorg/wikipedia/page/PageFragment;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$YamFkT4jhnufMmV4ZL4oeqBKh60;->f$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/page/PageFragment;->lambda$setupMessageHandlers$18$PageFragment(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
