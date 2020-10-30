.class public Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
.super Ljava/lang/Object;
.source "SyntaxHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightSearchMatchesTask;,
        Lorg/wikipedia/edit/richtext/SyntaxHighlighter$SyntaxHighlightTask;,
        Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private handler:Landroid/os/Handler;

.field private searchText:Ljava/lang/String;

.field private selectedMatchResultPosition:I

.field private syntaxHighlightCallback:Ljava/lang/Runnable;

.field private syntaxHighlightListener:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

.field private syntaxRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/edit/richtext/SyntaxRule;",
            ">;"
        }
    .end annotation
.end field

.field private textBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 45
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightCallback:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->context:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Landroid/widget/EditText;

    .line 105
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightListener:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    .line 110
    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->TEMPLATE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "{{"

    const-string v2, "}}"

    invoke-direct {p3, v1, v2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->INTERNAL_LINK:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "[["

    const-string v2, "]]"

    invoke-direct {p3, v1, v2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->EXTERNAL_LINK:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "["

    const-string v2, "]"

    invoke-direct {p3, v1, v2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->REF:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "<"

    const-string v2, ">"

    invoke-direct {p3, v1, v2, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->BOLD_ITALIC:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "\'\'\'\'\'"

    invoke-direct {p3, v1, v1, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->BOLD:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "\'\'\'"

    invoke-direct {p3, v1, v1, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    new-instance p3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    sget-object v0, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->ITALIC:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    const-string v1, "\'\'"

    invoke-direct {p3, v1, v1, v0}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->handler:Landroid/os/Handler;

    .line 156
    new-instance p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    invoke-direct {p1, p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)I
    .locals 0

    .line 28
    iget p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->selectedMatchResultPosition:I

    return p0
.end method

.method static synthetic access$400(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightListener:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    return-object p0
.end method

.method static synthetic access$600(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->postHighlightCallback()V

    return-void
.end method

.method static synthetic access$700(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    return-object p0
.end method

.method private postHighlightCallback()V
    .locals 4

    .line 186
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public applyFindTextSyntax(Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchText:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightListener:Lorg/wikipedia/edit/richtext/SyntaxHighlighter$OnSyntaxHighlightListener;

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->setSelectedMatchResultPosition(I)V

    .line 174
    invoke-direct {p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->postHighlightCallback()V

    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxHighlightCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clearSpans()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Landroid/widget/EditText;

    .line 195
    iput-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->context:Landroid/content/Context;

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public setSelectedMatchResultPosition(I)V
    .locals 0

    .line 178
    iput p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->selectedMatchResultPosition:I

    .line 179
    invoke-direct {p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->postHighlightCallback()V

    return-void
.end method
