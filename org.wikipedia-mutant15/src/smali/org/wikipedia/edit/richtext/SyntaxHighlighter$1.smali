.class Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;
.super Ljava/lang/Object;
.source "SyntaxHighlighter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;

.field private searchTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;

.field final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$run$1$SyntaxHighlighter$1(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$500(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$500(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;->syntaxHighlightResults(Ljava/util/List;)V

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v3}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lorg/wikipedia/edit/richtext/SpanExtents;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 74
    array-length v3, v2

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v4, v2, v5

    .line 75
    iget-object v6, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v6}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 82
    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v3}, Lorg/wikipedia/edit/richtext/SpanExtents;->getStart()I

    move-result v5

    invoke-interface {v3}, Lorg/wikipedia/edit/richtext/SpanExtents;->getEnd()I

    move-result v6

    const/16 v7, 0x12

    invoke-interface {v4, v3, v5, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 83
    invoke-interface {v3}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/edit/richtext/SyntaxRule;->getSpanStyle()Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    move-result-object v4

    sget-object v5, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCHES:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$200(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$200(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$500(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 89
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$500(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;->findTextMatches(Ljava/util/List;)V

    .line 91
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "That took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 50
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->currentTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;->cancel()V

    .line 54
    :cond_0
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/text/Editable;)V

    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->currentTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;

    .line 55
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v3}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$200(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$300(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/text/Editable;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->searchTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;

    .line 56
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$400(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 57
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    invoke-static {v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->access$400(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->currentTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;->searchTask:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;

    .line 58
    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;->INSTANCE:Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$qRSn8Znjr8GQpDXlj75dDfyma6E;

    .line 57
    invoke-static {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->zip(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 62
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 63
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$bhZJ-1V7Ohl5E6U2sck1L81seNw;

    invoke-direct {v2, p0}, Lorg/wikipedia/edit/richtext/-$$Lambda$SyntaxHighlighter$1$bhZJ-1V7Ohl5E6U2sck1L81seNw;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;)V

    sget-object v3, Lorg/wikipedia/edit/richtext/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;->INSTANCE:Lorg/wikipedia/edit/richtext/-$$Lambda$qTWoLJ1-c6oinTtw1U87_wRO39Q;

    .line 64
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    return-void
.end method
