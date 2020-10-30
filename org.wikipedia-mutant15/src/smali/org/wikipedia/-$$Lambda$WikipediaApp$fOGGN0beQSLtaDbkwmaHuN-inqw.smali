.class public final synthetic Lorg/wikipedia/-$$Lambda$WikipediaApp$fOGGN0beQSLtaDbkwmaHuN-inqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/-$$Lambda$WikipediaApp$fOGGN0beQSLtaDbkwmaHuN-inqw;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/-$$Lambda$WikipediaApp$fOGGN0beQSLtaDbkwmaHuN-inqw;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lorg/wikipedia/WikipediaApp;->lambda$getUserIdForLanguage$4(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
