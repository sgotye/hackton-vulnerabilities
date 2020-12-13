# 1. Инициализация авиакомпанией

Agrmt: 			

Ngtn: 			Ngtn: WaitingSupplier

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This very simple agreement
			addr: 1339


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: []
Phase: 			Phase: PhaseAgreement

bankAddress: 1339
paymentOrders: []


# 2. Поставщик одобряет договор

Agrmt: 			Ngtn: 			Ngtn: NegotiationApproved

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This very simple agreement
			addr: 1339


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: []
Phase: 			Phase: PhaseTasks

bankAddress: 1339
paymentOrders: []

# Поставщик напраляет ценовое уведомление сразу с NegotiationApproved

Agrmt: 			Ngtn: 			Ngtn: NegotiationApproved

			Cstm: 			addr: 1337
			Name: aviacompany

			Splr: 			addr: 1338
			Name: fuelcompany

			Dtls: 			Name: This very simple agreement
			addr: 1339


Tasks:
[]Negot: 			Ngtn: WaitingCustomer

PrChn: 			Prce: 100
			Ngtn: 			Ngtn: NegotiationApproved

			StTm: 10217

Phase: 			Phase: PhaseTasks

bankAddress: 1339
paymentOrders: []


